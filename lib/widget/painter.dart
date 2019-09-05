
import 'dart:developer' as de;
import 'dart:io';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;
import 'dart:async';
import 'dart:typed_data';

class Painter extends StatefulWidget {
  final PainterController painterController;


  Painter(PainterController painterController):
    this.painterController=painterController,
    super(key:new ValueKey<PainterController>(painterController)
  );

  @override
  _PainterState createState() => new _PainterState();
}

class _PainterState extends State<Painter> {

  bool _finished;

  Offset before;

  //GlobalKey capture = GlobalKey();
  @override
  void initState() {
    super.initState();
    _finished=false;

    widget.painterController._widgetFinish=_finish;

    //widget.painterController.capture = capture;
  }


  
  Size _finish(){
    setState((){
      _finished=true;
    });
    return context.size;
  }

  Size _noSetFinished(){
    return context.size;
  }


  @override
  Widget build(BuildContext context) {
    var controller =widget.painterController;
    Widget child;
    if(controller.pictureOn){
      child =new CustomPaint(
        willChange: true,
        foregroundPainter: new PicturePainter(
          controller._pathHistory,
          repaint: controller,
        ),
        child: Container(
            child:Image.file(controller.onDrawing)
        ),
      );
      return new RepaintBoundary(
        key : controller.capture,
        //key : capture
        child:RawGestureDetector(
          gestures: <Type, GestureRecognizerFactory>{
            CustomPanGestureRecognizer: GestureRecognizerFactoryWithHandlers<
                CustomPanGestureRecognizer>(
                  () =>
                  CustomPanGestureRecognizer(
                    onPanStart: _onPanStart,
                    onPanUpdate: _onPanUpdate,
                    onPanEnd: _onPanEnd,
                    context: context,
                  ),
                  (CustomPanGestureRecognizer instance) {},
            ),
          },
          child:child,
        ),
      );
    }
    else{
      child=new CustomPaint(
        willChange: true,
        painter: new _PainterPainter(
            controller._pathHistory,
            repaint: controller
        ),
      );
      child=new ClipRect(child:child);
      if(!_finished){
        //child=new GestureDetector(
        //  child:child,
        //  onPanStart: _onPanStart,
        //  onPanUpdate: _onPanUpdate,
        //  onPanEnd: _onPanEnd,
        //);
        child= RawGestureDetector(
          gestures: <Type, GestureRecognizerFactory>{
            CustomPanGestureRecognizer: GestureRecognizerFactoryWithHandlers<
                CustomPanGestureRecognizer>(
                  () =>
                  CustomPanGestureRecognizer(
                      onPanStart: _onPanStart,
                      onPanUpdate: _onPanUpdate,
                      onPanEnd: _onPanEnd,
                      context: context,
                  ),
                  (CustomPanGestureRecognizer instance) {},
            ),
          },
          child:child,
        );
      }
      return new Container(
        child: child,
        width: double.infinity,
        height: double.infinity,
      );
    }
  }


  void _onPanStart(DragStartDetails start){
    if(widget.painterController.removeon){
      var savedpath = widget.painterController.pathHistory.savedpath;
      var path = widget.painterController.pathHistory.paths;
      Offset pos=(context.findRenderObject() as RenderBox)
          .globalToLocal(start.globalPosition);
      //int removepath;
      //for(int i=0; i<path.length ; i++){
      // de.log("pos : "+pos.toString() +"     표적" + savedpath[i].value.toString());
      //  if(path[i].key.contains(pos)){
      //    removepath = i;
      //  }
      //}
      //savedpath.removeAt(removepath);
      //path.removeAt(removepath);
      int i;
      int j;
      for(i=0; i<savedpath.length;i++){
        for(j=0; j<savedpath[i].value.length;j++){
          if(sqrt((savedpath[i].value[j].dx-pos.dx)*(savedpath[i].value[j].dx-pos.dx)+(savedpath[i].value[j].dy-pos.dy)*(savedpath[i].value[j].dy-pos.dy))<10){
            savedpath.removeAt(i);
            path.removeAt(i);
            break;
          }
        }
      }
    }
    else{
      Offset pos=(context.findRenderObject() as RenderBox)
          .globalToLocal(start.globalPosition);
      before = pos;
      widget.painterController._pathHistory.add(pos);
      widget.painterController._notifyListeners();
    }
  }

  void _onPanUpdate(DragUpdateDetails update){
    if(widget.painterController.removeon){
      var savedpath = widget.painterController.pathHistory.savedpath;
      var path = widget.painterController.pathHistory.paths;
      Offset pos=(context.findRenderObject() as RenderBox)
          .globalToLocal(update.globalPosition);
      //int removepath;
      //for(int i=0; i<path.length ; i++){
      //  if(path[i].key.contains(pos)){
      //    removepath = i;
      //  }
      //}
      //savedpath.removeAt(removepath);
      //path.removeAt(removepath);
      int i;
      int j;
      for(i=0; i<savedpath.length;i++){
        for(j=0; j<savedpath[i].value.length;j++){
          if(sqrt((savedpath[i].value[j].dx-pos.dx)*(savedpath[i].value[j].dx-pos.dx)+(savedpath[i].value[j].dy-pos.dy)*(savedpath[i].value[j].dy-pos.dy))<10){
            savedpath.removeAt(i);
            path.removeAt(i);
            break;
          }
        }
      }

    }
    else{
      Offset pos=(context.findRenderObject() as RenderBox)
            .globalToLocal(update.globalPosition);
      if(sqrt((pos.dx-before.dx)*(pos.dx-before.dx)+(pos.dy-before.dy)*(pos.dy-before.dy))<50 ){
        before = pos;
        widget.painterController._pathHistory.updateCurrent(pos);
        widget.painterController._notifyListeners();
      }

    }
  }

  void _onPanEnd(DragEndDetails end){
    if(widget.painterController.pictureOn){
      Future <Uint8List> data = capturePng(widget.painterController.capture);
      getimg(data);
    }

    widget.painterController._pathHistory.endCurrent();
    widget.painterController._notifyListeners();
  }




  Future<Uint8List> capturePng(GlobalKey capture) async{
    RenderRepaintBoundary boundary = capture.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    return (await image.toByteData(format: ui.ImageByteFormat.png)).buffer.asUint8List();
  }

  void getimg(Future<Uint8List> val) {
    val.then((data)=>setState((){
      widget.painterController.display = data;
    }));
  }

}

class CustomPanGestureRecognizer extends PanGestureRecognizer {
  final Function onPanStart;
  final Function onPanUpdate;
  final Function onPanEnd;
  final BuildContext context;
  CustomPanGestureRecognizer(
      {@required this.onPanStart,
        @required this.onPanUpdate,
        @required this.onPanEnd,
        @required this.context,
      });

  static bool isLarge(BuildContext context) {
    assert(context != null);
    var size = MediaQuery.of(context).size;
    return min(size.width, size.height) > 600;
  }

  @override
  void addPointer(PointerEvent event) {
    if(isLarge(context)){
      if(event.kind == PointerDeviceKind.stylus){
        startTrackingPointer(event.pointer);
        resolve(GestureDisposition.accepted);
      }
      else{
        stopTrackingPointer(event.pointer);
      }
    }
    else{
      startTrackingPointer(event.pointer);
      resolve(GestureDisposition.accepted);
    }
  }


  @override
  void handleEvent(PointerEvent event) {
    DragStartDetails start = new DragStartDetails( globalPosition: event.position);
    DragUpdateDetails update = new DragUpdateDetails(globalPosition: event.position);
    DragEndDetails end = new DragEndDetails();

    if (event is PointerDownEvent) {
      //onPanStart(event.position);
      onPanStart(start);
    }
    else if (event is PointerMoveEvent) {
      onPanUpdate(update);
    }
    else if(event is PointerUpEvent){
      onPanEnd(end);
    }
  }

  @override
  String get debugDescription => 'customPan';

  @override
  void didStopTrackingLastPointer(int pointer) {}
}

class _PainterPainter extends CustomPainter{
  final _PathHistory _path;
  _PainterPainter(this._path,{Listenable repaint}):super(repaint:repaint);

  @override
  void paint(Canvas canvas, Size size) {
    _path.draw(canvas, size);
  }

  @override
  bool shouldRepaint(_PainterPainter oldDelegate) {
    return true;
  }

}

class PicturePainter extends CustomPainter{
  final _PathHistory _path;
  PicturePainter(this._path,{Listenable repaint}):super(repaint:repaint);
  @override
  void paint(Canvas canvas, Size size) {
    _path.onImagedraw(canvas, size);
  }

  @override
  bool shouldRepaint(PicturePainter oldDelegate) {
    return true;
  }

}


class _PathHistory {
  List<MapEntry<double,double>> _pathload;
  MapEntry<Offset,Paint> _paXyPaint;
  List<MapEntry<MapEntry<Offset,Paint>, List<Offset>>> _savedpath;



  List<MapEntry<Path, Paint>> _paths;
  Paint currentPaint;
  Paint _backgroundPaint;
  bool _inDrag;
  Canvas canvas;

  _PathHistory() {
    _paths = new List<MapEntry<Path, Paint>>();
    //_paXyPaint=new MapEntry<Offset,Paint>(Offset() , Paint());
    //_pathload=new List<Offset>();
    _savedpath = new List<MapEntry<MapEntry<Offset,Paint>, List<Offset>>>();
    _inDrag = false;
    _backgroundPaint = new Paint();
  }

  void setBackgroundColor(Color backgroundColor) {
    _backgroundPaint.color = backgroundColor;
  }

  void undo() {
    if (!_inDrag) {
      _savedpath.removeLast();
      _paths.removeLast();
    }
  }

  void clear() {
    if (!_inDrag) {
      _savedpath.clear();
      _paths.clear();
    }
  }

  void add(Offset startPoint) {
    if (!_inDrag) {
      _inDrag = true;
      Path path = new Path();
      path.moveTo(startPoint.dx, startPoint.dy);
      _paXyPaint=new MapEntry(startPoint, currentPaint);
      //<MapEntry<Offset,Paint>, List<Offset>>
      _savedpath.add(new MapEntry<MapEntry<Offset,Paint>,List<Offset>>(_paXyPaint, new List<Offset>()));
      _paths.add(new MapEntry<Path, Paint>(path, currentPaint));
    }
  }

  void updateCurrent(Offset nextPoint) {
    if (_inDrag) {
      Path path = _paths.last.key;
      _savedpath.last.value.add(nextPoint);
      path.lineTo(nextPoint.dx, nextPoint.dy);
    }
  }

  void endCurrent() {
    _inDrag = false;
  }

  List<MapEntry<Path, Paint>> get paths => _paths;

  set paths(List<MapEntry<Path, Paint>> path) {
    _paths = path;
  }



  List<MapEntry<double,double>> get pathload=> _pathload;


  List<MapEntry<MapEntry<Offset,Paint>, List<Offset>>> get savedpath=> _savedpath;
  set savedpath( List<MapEntry<MapEntry<Offset,Paint>, List<Offset>>> sp) {
    savedpath = sp;
  }


  void draw(Canvas canvas, Size size) {
    canvas.drawRect(
        new Rect.fromLTWH(0.0, 0.0, size.width, size.height), _backgroundPaint);

    for (MapEntry<Path, Paint> path in _paths) {
      canvas.drawPath(path.key, path.value);
    }
  }
  void onImagedraw(Canvas canvas, Size size){
    for (MapEntry<Path, Paint> path in _paths) {
      canvas.drawPath(path.key, path.value);
    }
  }

}


typedef PictureDetails PictureCallback();

class PictureDetails{
  final ui.Picture picture;
  final int width;
  final int height;

  const PictureDetails(this.picture,this.width,this.height);

  Future<ui.Image> toImage(){
    return picture.toImage(width, height);
  }

  Future<Uint8List> toPNG() async{
    final image = await toImage();
    return (await image.toByteData(format: ui.ImageByteFormat.png)).buffer.asUint8List();
  }
}

class PainterController extends ChangeNotifier{
  Color _drawColor=new Color.fromARGB(255, 0, 0, 0);
  Color _backgroundColor=new Color.fromARGB(255, 255, 255, 255);

  bool removeon=false;
  double _thickness=1.0;
  PictureDetails _cached;
  _PathHistory _pathHistory;
  ValueGetter<Size> _widgetFinish;


  bool _pictureOn=false;
  ui.Image _image;
  File _onDrawing;
  Uint8List display;
  GlobalKey _capture = GlobalKey();
  /////////////////////////////////////////
  GlobalKey get capture => _capture;
  PictureDetails get cached=>_cached;
  ///////////////////////////////////////
  PainterController(){
    _pathHistory=new _PathHistory();
  }
  ui.Image get image =>_image;
  set image(ui.Image img){
    _image = img;
    notifyListeners();
  }


  bool get pictureOn => _pictureOn;
  set pictureOn(bool pictureOn){
    _pictureOn = pictureOn;
    notifyListeners();
  }

  File get onDrawing => _onDrawing;
  set onDrawing(File file){
    _onDrawing = file;
    notifyListeners();
  }
  

  Color get drawColor => _drawColor;
  set drawColor(Color color){
    _drawColor=color;
    _updatePaint();
  }

  Color get backgroundColor => _backgroundColor;
  set backgroundColor(Color color){
    _backgroundColor=color;
    _updatePaint();
  }

  double get thickness => _thickness;
  set thickness(double t){
    _thickness=t;
    _updatePaint();
  }
  ////////////////////////////////////////////
  _PathHistory get pathHistory=>_pathHistory;
  ///////////////////////////////////////////
  void _updatePaint(){
    Paint paint=new Paint();
    paint.color=drawColor;
    paint.style=PaintingStyle.stroke;
    paint.strokeWidth=thickness;
    paint.strokeCap=StrokeCap.round;
    _pathHistory.currentPaint=paint;
    _pathHistory.setBackgroundColor(backgroundColor);
    notifyListeners();
  }

  void erase() {
    if(!isFinished()) {
      removeon = true;
      notifyListeners();
    }
  }

  void undo(){
    if(!isFinished()) {
      _pathHistory.undo();
      notifyListeners();
    }
  }


  void _notifyListeners(){
    notifyListeners();
  }

  void clear(){
    if(!isFinished()) {
      _pathHistory.clear();
      notifyListeners();
    }
  }

  PictureDetails finish(){
    if(!isFinished()){
      _cached=_render(_widgetFinish());
    }
    return _cached;
  }

  PictureDetails noSetFinish(Size size){
    return _render(size);
  }


  /////////////////////////////////
  PictureDetails _render(Size size){
    

    ui.PictureRecorder recorder =new ui.PictureRecorder();
    Canvas canvas=new Canvas(recorder);
    _pathHistory.draw(canvas, size);
    return new PictureDetails(recorder.endRecording(),size.width.floor(),size.height.floor());
    //}
  }

  bool isFinished(){
    return _cached!=null;
  }

}
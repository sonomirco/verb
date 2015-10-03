package verb.geom;

import verb.core.Make;
import verb.core.types.NurbsCurveData;
import verb.core.Mat;

// A surface that has a spherical shape

@:expose("geom.SphericalSurface")
class SphericalSurface extends NurbsSurface {

    //Create a spherical surface
    //
    //**params**
    //
    //* Length 3 array representing the center of the circle
    //* Radius of the circle

    public function new(   center : Point,
                           radius : Float ) {
        super( Make.sphericalSurface( center, [0,0,1], [1,0,0], radius ));

        _center = center;
        _radius = radius;
    }

    private var _center : Point;
    private var _radius : Float;

    //Length 3 array representing the center of the circle

    public function center() : Point{ return _center; }

    //Radius of the circle

    public function radius() : Float{ return _radius; }


}

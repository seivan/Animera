
import Foundation

public typealias TimingFunctionHandler = (Double) -> (Double)


public struct TimingFunctions {

  public static var linearInterpolation:TimingFunctionHandler {
    return { t in
         return t
      }
  }

  public static var quadraticEaseIn:TimingFunctionHandler {
    return { t in
       return t*t
    }
  }

  public static var quadraticEaseOut:TimingFunctionHandler {
    return { t in
       return -(t * (t - 2.0))
    }
  }

  public static var quadraticEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) { return 2.0 * t * t }
      else { return (-2.0 * t * t) + (4.0 * t) - 1.0 }
    }
  }
  
  public static var cubicEaseIn:TimingFunctionHandler {
    return { t in
      return t*t*t
      }
  }

  public static var cubicEaseOut:TimingFunctionHandler {
    return { t in
      let f = (t - 1.0)
      return f * f * f + 1.0
      }
  }

  public static var cubicEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) {
        return 4.0 * t * t * t
      }
      else {
        let f = ((2.0 * t) - 2.0)
        return 0.5 * f * f * f + 1.0
      }
    }
  }
  
  public static var quarticEaseIn:TimingFunctionHandler {
    return { t in
      return t*t*t*t
    }
  }

  public static var quarticEaseOut:TimingFunctionHandler {
    return { t in
      let f = (t - 1.0)
      return f * f * f * (1.0 - t) + 1.0
    }
  }

  public static var quarticEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5)
      {
        return 8.0 * t * t * t * t
      }
      else
      {
        let f = (t - 1.0)
        return -8.0 * f * t * t * t + 1.0
      }
    }
  }


  public static var quinticEaseIn:TimingFunctionHandler {
    return { t in
      return  t * t * t * t * t
    }
  }
  
  public static var quinticEaseOut:TimingFunctionHandler {
    return { t in
      let f = (t - 1.0)
      return f * f * f * f * f + 1.0
      }
  }

  public static var quinticEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) {
        return 16.0 * t * t * t * t * t
      }
      else {
        let f = ((2.0 * t) - 2.0)
        return  0.5 * f * f * f * f * f + 1.0
      }
    }
  }

  public static var sineEaseIn:TimingFunctionHandler {
    return { t in
      return sin((t - 1.0) * M_PI_2) + 1.0
    }
  }

  public static var sineEaseOut:TimingFunctionHandler {
    return { t in
      return sin(t * M_PI_2)
    }
  }

  public static var sineEaseInOut:TimingFunctionHandler {
    return { t in
      return 0.5 * (1.0 - cos(t * M_PI))
    }
  }

  public static var circularEaseIn:TimingFunctionHandler {
    return { t in
      return 1.0 - sqrt(1.0 - (t * t))
    }
  }

  public static var circularEaseOut:TimingFunctionHandler {
    return { t in
      return sqrt((2.0 - t) * t)
    }
  }

  public static var circularEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) { return 0.5 * (1.0 - sqrt(1.0 - 4.0 * (t * t))) }
      else { return 0.5 * (sqrt(-((2.0 * t) - 3.0) * ((2.0 * t) - 1.0)) + 1.0) }
    }
  }

  public static var exponentialEaseIn:TimingFunctionHandler {
    return { t in
      return (t == 0.0) ? t : pow(2.0, 10.0 * (t - 1.0))
    }
  }

  public static var exponentialEaseOut:TimingFunctionHandler {
    return { t in
      return (t == 1.0) ? t : 1 - pow(2.0, -10.0 * t)
    }
  }

  public static var exponentialEaseInOut:TimingFunctionHandler {
    return { t in
      if(t == 0.0 || t == 1.0) { return t }
      if(t < 0.5) { return 0.5 * pow(2.0, (20.0 * t) - 10.0) }
      else { return -0.5 * pow(2.0, (-20.0 * t) + 10.0) + 1.0 }
    }
  }
  
  public static var elasticEaseIn:TimingFunctionHandler {
    return { t in
      return sin(13.0 * M_PI_2 * t) * pow(2.0, 10.0 * (t - 1.0))
    }
  }

  public static var elasticEaseOut:TimingFunctionHandler {
    return { t in
      return sin(-13.0 * M_PI_2 * (t + 1.0)) * pow(2.0, -10.0 * t) + 1.0
    }
  }

  public static var elasticEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) { return 0.5 * sin(13.0 * M_PI_2 * (2.0 * t)) * pow(2.0, 10.0 * ((2.0 * t) - 1.0)) }
      else { return 0.5 * (sin(-13.0 * M_PI_2 * ((2.0 * t - 1.0) + 1.0)) * pow(2.0, -10 * (2.0 * t - 1.0)) + 2.0) }
    }
  }

  public static var backEaseIn:TimingFunctionHandler {
    return { t in
      return t * t * t - t * sin(t * M_PI)
    }
  }

  public static var backEaseOut:TimingFunctionHandler {
    return { t in
      let f = (1.0 - t)
      return 1.0 - (f * f * f - f * sin(f * M_PI))
    }
  }

  public static var backEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) {
        let f = 2.0 * t
        return 0.5 * (f * f * f - f * sin(f * M_PI))
      }
      else {
        let f = (1.0 - (2*t - 1.0))
        return 0.5 * (1.0 - (f * f * f - f * sin(f * M_PI))) + 0.5
      }
    }
  }
  
  public static var bounceEaseIn:TimingFunctionHandler {
    return { t in
      return 1.0 - self.bounceEaseOut(1.0 - t)
    }
  }
  
  public static var bounceEaseOut:TimingFunctionHandler {
    return { t in
      if(t < 4/11.0) { return (121 * t * t)/16.0 }
      else if(t < 8/11.0) { return (363/40.0 * t * t) - (99/10.0 * t) + 17/5.0 }
      else if(t < 9/10.0) { return (4356/361.0 * t * t) - (35442/1805.0 * t) + 16061/1805.0 }
      else { return (54/5.0 * t * t) - (513/25.0 * t) + 268/25.0 }
    }
  }

  public static var bounceEaseInOut:TimingFunctionHandler {
    return { t in
      if(t < 0.5) { return 0.5 * self.bounceEaseIn(t * 2.0) }
      else { return 0.5 * self.bounceEaseOut(t * 2.0 - 1.0) + 0.5}
    }
  }
  
  public static var extremeBackEaseIn:TimingFunctionHandler {
    return { t in
      return (t * t - sin(t * M_PI)) * t
      }
  };
  
  public static var extremeBackEaseOut:TimingFunctionHandler {
    return { t in
      let f = 1.0 - t
      return 1.0 - (f * f - sin(f * M_PI)) * f
      }
  }
  
  public static var extremeBackEaseInOut:TimingFunctionHandler {
    return { t in
      if (t < 0.5) {
        let f = 2.0 * t;
        return 0.5 * (f * f - sin(f * M_PI)) * f
      }
      else {
        let f = 2.0 * (1.0 - t)
        return 1.0 - 0.5 * (f * f - sin(f * M_PI)) * f
      }
    }
  }
  
  public static var smoothStep:TimingFunctionHandler {
    return { t in
      return t * t * (3.0 - 2.0 * t)
    }
  }

}

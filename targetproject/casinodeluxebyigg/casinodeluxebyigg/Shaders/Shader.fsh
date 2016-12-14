//
//  Shader.fsh
//  casinodeluxebyigg
//
//  Created by bzbee on 14/12/16.
//  Copyright © 2016 bzbee. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}

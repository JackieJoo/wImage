( function _ReaderPngjs_test_s_( )
{

'use strict';

if( typeof module !== 'undefined' )
{
  let _ = require( '../../../../dwtools/Tools.s' );
  require( '../image/entry/ReaderPngjs.s' );
  require( './ReaderAbstract.test.s' );
}

let _ = _global_.wTools;
let Parent = _global_.wTests.ImageReadAbstract; /* xxx : rename */

// --
// context
// --

// --
// tests
// --

// --
// declare
// --

var Proto =
{

  name : 'ImageReadPngjs',
  abstract : 0,

  context :
  {
    ext : 'png',
    format : 'png',
  },

  tests :
  {


  },

}

//

var Self = new wTestSuite( Proto ).inherit( Parent );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
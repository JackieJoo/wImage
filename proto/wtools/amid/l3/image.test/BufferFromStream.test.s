( function _Buffer_From_Stream_test_s_( )
{

'use strict';

if( typeof module !== 'undefined' )
{
  let _ = require( '../../../../wtools/Tools.s' );
  require( '../image/entry/Reader.s' );
  _.include( 'wTesting' );
}

let _ = _global_.wTools;
let bufferFromStream = require( __dirname + '/../image/l5_reader/BufferFromStream.s' );

// --
// context
// --

function onSuiteBegin( test )
{
  let context = this;

  context.suiteTempPath = _.path.tempOpen( _.path.join( __dirname, '../..' ), 'ImageRead' );
  // context.assetsOriginalPath = _.path.join( __dirname, '_assets' );

}

//

function onSuiteEnd( test )
{
  let context = this;

  _.assert( _.strHas( context.suiteTempPath, '/ImageRead' ) )
  _.path.tempClose( context.suiteTempPath );

}

// --
// tests
// --

function bufferFromStream_( test )
{
  test.case = 'test';
  let stream = _.fileProvider.streamRead
  ({
    filePath : __dirname + '/_assets/basic/Pixels-2x2.png',
    encoding : 'buffer.raw',
  });
  test.is( _.streamIs( stream ) );
  let ready = bufferFromStream({ src : stream });
  test.is( _.consequenceIs( ready ))

  ready.then( ( data ) =>
  {
    test.is( _.bufferRawIs( data ) );
    return null;
  } );

  return ready;
}

// --
// declare
// --

var Proto =
{

  name : 'bufferFromStream',
  silencing : 1,
  enabled : 1,

  onSuiteBegin,
  onSuiteEnd,

  context :
  {
    suiteTempPath : null,
    assetsOriginalPath : null,
    appJsPath : null,
    ext : 'png',
    inFormat : 'png',
  },

  tests :
  {
    bufferFromStream_
  },

}

//

var Self = new wTestSuite( Proto )
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );
})()
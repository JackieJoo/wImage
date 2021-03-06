( function _Writer_s_( )
{

'use strict';

const _ = _global_.wTools;
const Self = _.image = _.image || Object.create( null );
_.image.writer = _.image.writer || Object.create( null );

// --
// inter
// --

function write( o )
{
  let self = this;
  o = _.routineOptions( write, arguments );

  _.assert( arguments.length === 1, `Expects a single argument, but got ${arguments.length}!` );
  _.assert( _.objectIs( o ), 'Expects an object {-o-}!' );


}

write.defaults =
{
  filePath : null,
  outFormat : null,
}

// --
// declare
// --

let Extension =
{

  write,

}

_.mapExtend( Self, Extension );

//

if( typeof module !== 'undefined' )
module[ 'exports' ] = _global_.wTools;

})();

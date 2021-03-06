package flash.net;

extern class Socket extends flash.events.EventDispatcher implements flash.utils.IDataOutput implements flash.utils.IDataInput {
	var bytesAvailable(default,never) : UInt;
	@:require(flash11) var bytesPending(default,never) : UInt;
	var connected(default,never) : Bool;
	var endian : flash.utils.Endian;
	#if air
	var localAddress(default,never) : String;
	var localPort(default,never) : Int;
	#end
	var objectEncoding : #if openfl openfl.net.ObjectEncoding #else UInt #end;
	#if air
	var remoteAddress(default,never) : String;
	var remotePort(default,never) : Int;
	#end
	@:require(flash10) var timeout : UInt;
	function new(?host : String, port : Int = 0) : Void;
	function close() : Void;
	function connect(host : String, port : Int) : Void;
	function flush() : Void;
	function readBoolean() : Bool;
	function readByte() : Int;
	function readBytes(bytes : flash.utils.ByteArray, offset : UInt = 0, length : UInt = 0) : Void;
	function readDouble() : Float;
	function readFloat() : Float;
	function readInt() : Int;
	function readMultiByte(length : UInt, charSet : String) : String;
	function readObject() : Dynamic;
	function readShort() : Int;
	function readUTF() : String;
	function readUTFBytes(length : UInt) : String;
	function readUnsignedByte() : UInt;
	function readUnsignedInt() : UInt;
	function readUnsignedShort() : UInt;
	function writeBoolean(value : Bool) : Void;
	function writeByte(value : Int) : Void;
	function writeBytes(bytes : flash.utils.ByteArray, offset : UInt = 0, length : UInt = 0) : Void;
	function writeDouble(value : Float) : Void;
	function writeFloat(value : Float) : Void;
	function writeInt(value : Int) : Void;
	function writeMultiByte(value : String, charSet : String) : Void;
	function writeObject(object : Dynamic) : Void;
	function writeShort(value : Int) : Void;
	function writeUTF(value : String) : Void;
	function writeUTFBytes(value : String) : Void;
	function writeUnsignedInt(value : UInt) : Void;
}

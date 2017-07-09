{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_LanILOSOS (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\lalka\\Desktop\\LanHASKELL\\probe\\LanILOSOS\\.stack-work\\install\\ed14a2f4\\bin"
libdir     = "C:\\Users\\lalka\\Desktop\\LanHASKELL\\probe\\LanILOSOS\\.stack-work\\install\\ed14a2f4\\lib\\x86_64-windows-ghc-8.0.2\\LanILOSOS-0.1.0.0-LKfClj0WiMJLfUuskj04LW"
dynlibdir  = "C:\\Users\\lalka\\Desktop\\LanHASKELL\\probe\\LanILOSOS\\.stack-work\\install\\ed14a2f4\\lib\\x86_64-windows-ghc-8.0.2"
datadir    = "C:\\Users\\lalka\\Desktop\\LanHASKELL\\probe\\LanILOSOS\\.stack-work\\install\\ed14a2f4\\share\\x86_64-windows-ghc-8.0.2\\LanILOSOS-0.1.0.0"
libexecdir = "C:\\Users\\lalka\\Desktop\\LanHASKELL\\probe\\LanILOSOS\\.stack-work\\install\\ed14a2f4\\libexec"
sysconfdir = "C:\\Users\\lalka\\Desktop\\LanHASKELL\\probe\\LanILOSOS\\.stack-work\\install\\ed14a2f4\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "LanILOSOS_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "LanILOSOS_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "LanILOSOS_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "LanILOSOS_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "LanILOSOS_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "LanILOSOS_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)

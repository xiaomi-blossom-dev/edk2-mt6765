[Defines]
  PLATFORM_NAME                  = MT6765Pkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = MT6765Pkg/MT6765Pkg.fdf

!include MT6765Pkg/MT6765Pkg.dsc

[PcdsFixedAtBuild.common]
  gArmTokenSpaceGuid.PcdSystemMemoryBase|0x40000000
  gArmTokenSpaceGuid.PcdSystemMemorySize|0xc0000000
  gEmbeddedTokenSpaceGuid.PcdPrePiStackBase|0x40C00000
  gEmbeddedTokenSpaceGuid.PcdPrePiStackSize|0x00040000
  gMT6765PkgTokenSpaceGuid.PcdUefiMemPoolBase|0x40D00000
  gMT6765PkgTokenSpaceGuid.PcdUefiMemPoolSize|0x03300000
  gArmTokenSpaceGuid.PcdCpuVectorBaseAddress|0x40C40000
  gMT6765PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x7C2D4800
  gMT6765PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|720
  gMT6765PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|1440
  gMT6765PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleWidth|720
  gMT6765PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleHeight|1440
  gMT6765PkgTokenSpaceGuid.PcdMipiFrameBufferPixelBpp|32

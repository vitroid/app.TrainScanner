# -*- mode: python -*-

block_cipher = None


a = Analysis(['trainscanner_gui.py'],
             #pathex=['/Users/matto/github/TrainScanner'],
             pathex=["."],
             binaries=None,
             datas=None,
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             #win_no_prefer_redirects=False,
             #win_private_assemblies=False,
             cipher=block_cipher)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          exclude_binaries=True,
          name='trainscanner_gui',
          debug=False,
          strip=False,
          upx=True,
          console=True )
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=False,
               upx=True,
               name='trainscanner_gui')
app = BUNDLE(coll,
             name='TrainScanner.app',
             icon='../trainscanner.icns',
             bundle_identifier='jp.vitroid.trainscanner')

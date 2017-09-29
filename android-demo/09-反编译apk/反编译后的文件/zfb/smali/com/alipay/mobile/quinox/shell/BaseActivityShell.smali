.class public Lcom/alipay/mobile/quinox/shell/BaseActivityShell;
.super Landroid/app/Activity;
.source "BaseActivityShell.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

.field protected defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

.field protected dexLoader:Ldalvik/system/DexClassLoader;

.field protected targetActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    const-class v1, Landroid/content/Intent;

    aput-object v1, v0, v5

    .line 271
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p3, v1, v5

    .line 272
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onActivityResult"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 266
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 285
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 279
    :cond_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/app/Activity;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    .line 290
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 291
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onChildTitleChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    .line 203
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 252
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 253
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    .line 259
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 260
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 324
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLowMemory()V

    .line 356
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 372
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 378
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->onActivityShellPause()V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onPostResume"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/Dialog;

    aput-object v1, v0, v4

    .line 397
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 398
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onPrepareDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/Dialog;

    aput-object v1, v0, v4

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v5

    .line 404
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    .line 405
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onPrepareDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 95
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->onActivityShellResume()V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 127
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 435
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 436
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 437
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onTitleChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 452
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 446
    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 458
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 464
    :cond_0
    return-void
.end method

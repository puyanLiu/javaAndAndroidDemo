.class public Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivityShell.java"


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
    .line 36
    const-class v0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

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

    .line 263
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    const-class v1, Landroid/content/Intent;

    aput-object v1, v0, v5

    .line 264
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p3, v1, v5

    .line 265
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onActivityResult"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 259
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 463
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 278
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 272
    :cond_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/app/Activity;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    .line 283
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 284
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onChildTitleChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    .line 196
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 240
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 245
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 246
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

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

    .line 251
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    .line 252
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 253
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 134
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDetachedFromWindow()V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 317
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onLowMemory()V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLowMemory()V

    .line 349
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 385
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 371
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->onActivityShellPause()V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 118
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onPostResume"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 389
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/Dialog;

    aput-object v1, v0, v4

    .line 390
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 391
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onPrepareDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    new-array v0, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Landroid/app/Dialog;

    aput-object v1, v0, v4

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v5

    .line 397
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    .line 398
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onPrepareDialog"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->onActivityShellResume()V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v1, "onResumeFragments"

    invoke-static {v0, v1, v2, v2}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 127
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 128
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 428
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 429
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 430
    iget-object v2, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    const-string/jumbo v3, "onTitleChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->callActivityOnMethod(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    .line 445
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 439
    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 451
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 457
    :cond_0
    return-void
.end method

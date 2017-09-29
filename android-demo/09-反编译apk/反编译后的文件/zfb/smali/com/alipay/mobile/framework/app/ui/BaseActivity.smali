.class public abstract Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.super Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
.implements Lcom/alipay/mobile/framework/app/ui/ActivityTrackable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 323
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 350
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 371
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dismissProgressDialog()V

    .line 421
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dispatchOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 286
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 287
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->finish()V

    .line 291
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getActivityTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSourceTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 139
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 140
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onBackPressed()V

    .line 144
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 270
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 271
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onContentChanged()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onContentChanged()V

    .line 275
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 67
    new-array v6, v7, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    .line 68
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v0, p0, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v0, p0, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "dynamicLoadToCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "M040"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v0, p0, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 252
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 253
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onDestroy()V

    .line 257
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 154
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 155
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 121
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onPause()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onPause()V

    .line 125
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 460
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 100
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 101
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onResume()V

    .line 105
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startClientStartedPipeline()V

    .line 108
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 202
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 203
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 218
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 219
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onStart()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStart()V

    .line 223
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 237
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onStop()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStop()V

    .line 241
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 171
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onUserLeaveHint()V

    .line 175
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 186
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 187
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onWindowFocusChanged(Z)V

    .line 191
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 454
    :cond_0
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 416
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 384
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 385
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->toast(Ljava/lang/String;I)V

    .line 389
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 390
    return-void
.end method

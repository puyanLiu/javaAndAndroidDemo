.class final Lcom/alipay/android/phone/home/ui/aj;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/aj;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/aj;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    return-object v0
.end method


# virtual methods
.method public final onDragEnded()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public final onEditAction(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v1, v1, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_0

    .line 341
    const-string/jumbo v2, "deleteFromHome"

    .line 342
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v2, v3}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->checkHomeAppLastOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->showLastAppDialog()V

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToAppCenter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 352
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->showMoreAppFullAlert()V

    goto :goto_1
.end method

.method public final onEnterEditMode()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 315
    return-void
.end method

.method public final onItemLongClicked(I)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 308
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 309
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 310
    return-void
.end method

.method public final onQuitEditMode(Z)V
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onQuitEditMode, appHasMoved:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ak;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/ak;-><init>(Lcom/alipay/android/phone/home/ui/aj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 331
    :cond_0
    return-void
.end method

.method public final onReorder(II)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(II)V

    .line 298
    return-void
.end method

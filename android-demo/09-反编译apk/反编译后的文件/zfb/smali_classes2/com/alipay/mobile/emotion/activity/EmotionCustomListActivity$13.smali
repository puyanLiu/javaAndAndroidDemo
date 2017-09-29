.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/service/PhotoSelectListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    return-object v0
.end method


# virtual methods
.method public onPhotoSelected(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 567
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getCustomEmotionTotalSize()I

    move-result v0

    const/16 v1, 0x9c

    if-lt v0, v1, :cond_1

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->cant_select_more:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->toast(Ljava/lang/String;I)V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 576
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->too_bigger:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    sget v3, Lcom/alipay/android/phone/emotion/R$string;->saved:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->toast(Ljava/lang/String;I)V

    .line 584
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 585
    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 586
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 584
    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 616
    const-string/jumbo v0, "EmotionInit_task"

    .line 588
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelectCanceled()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

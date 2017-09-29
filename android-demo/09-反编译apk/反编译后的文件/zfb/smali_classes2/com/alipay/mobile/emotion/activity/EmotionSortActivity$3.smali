.class Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;
.super Ljava/lang/Object;
.source "EmotionSortActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->setmEmoiPackageModelList(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

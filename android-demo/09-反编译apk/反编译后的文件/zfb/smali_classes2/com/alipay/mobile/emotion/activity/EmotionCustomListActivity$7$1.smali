.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$1;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 308
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getTempDelEmotionList()Ljava/util/List;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$18(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/util/List;)V

    .line 313
    :cond_0
    return-void
.end method

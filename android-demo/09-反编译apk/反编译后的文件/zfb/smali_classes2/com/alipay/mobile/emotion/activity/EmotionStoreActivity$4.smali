.class Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;
.super Ljava/lang/Object;
.source "EmotionStoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Ljava/util/List;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    iget-object v1, v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 149
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    .line 150
    const-class v3, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    .line 149
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string/jumbo v2, "toEmotionDetailID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "emotionsore,packageid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 159
    return-void
.end method

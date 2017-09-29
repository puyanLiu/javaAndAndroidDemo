.class Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;
.super Ljava/lang/Object;
.source "EmotionsLayout.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/adapter/EmotionTabBarAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/view/View;Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;)V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 195
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$12(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v1, 0x1

    iget v2, p2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->viewType:I

    if-ne v1, v2, :cond_3

    .line 199
    iget-object v0, p2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->gotoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startH5OrActivty(Ljava/lang/String;)V

    .line 203
    :goto_1
    const-string/jumbo v0, "store"

    iget-object v1, p2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v1, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->iv_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 205
    if-eqz v0, :cond_2

    .line 206
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 207
    const-string/jumbo v0, "store_new"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_2
    if-eqz p2, :cond_0

    const/4 v0, 0x5

    iget-object v1, p2, Lcom/alipay/mobile/emotion/model/EmotionTabBarItemModel;->internalModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget v1, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    if-ne v0, v1, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->runSyncTask(Z)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$2;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$13(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$9(Lcom/alipay/mobile/emotion/view/EmotionsLayout;ILjava/lang/String;)V

    goto :goto_1
.end method

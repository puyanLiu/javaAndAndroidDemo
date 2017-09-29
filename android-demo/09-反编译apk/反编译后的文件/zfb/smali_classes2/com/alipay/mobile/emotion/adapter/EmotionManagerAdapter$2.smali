.class Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$2;
.super Ljava/lang/Object;
.source "EmotionManagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

.field private final synthetic val$packageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$2;->val$packageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string/jumbo v1, "toEmotionDetailID"

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$2;->val$packageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/EmotionModelFactory;->createBrifVOByEmoiPackageModel(Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 89
    return-void
.end method

.class Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$1;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$1;->val$packageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter$1;->val$packageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->delEmotionPackage(Ljava/lang/String;)Z

    .line 77
    return-void
.end method

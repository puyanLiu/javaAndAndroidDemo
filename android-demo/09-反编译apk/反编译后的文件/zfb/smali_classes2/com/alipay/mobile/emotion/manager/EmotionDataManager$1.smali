.class Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;
.super Ljava/lang/Object;
.source "EmotionDataManager.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/step/StepObserver;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

.field private final synthetic val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

.field private final synthetic val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->this$0:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->this$0:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    return-object v0
.end method


# virtual methods
.method public onStepError(Lcom/alipay/mobile/emotion/step/Step;Z)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    const-string/jumbo v1, "unzip error"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onStepSuccess(Lcom/alipay/mobile/emotion/step/Step;)V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getZipJsonFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;-><init>(Ljava/io/File;)V

    .line 228
    new-instance v1, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;-><init>(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->setStepObserver(Lcom/alipay/mobile/emotion/step/StepObserver;)V

    .line 296
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/step/InfoJsonParserStep;->start()Z

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    const-string/jumbo v1, "zip not found"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    const-string/jumbo v1, "zipdir not found"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

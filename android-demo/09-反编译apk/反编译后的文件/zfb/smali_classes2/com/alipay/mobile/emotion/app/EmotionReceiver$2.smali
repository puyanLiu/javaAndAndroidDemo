.class Lcom/alipay/mobile/emotion/app/EmotionReceiver$2;
.super Ljava/lang/Object;
.source "EmotionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/app/EmotionReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/app/EmotionReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/app/EmotionReceiver$2;->this$0:Lcom/alipay/mobile/emotion/app/EmotionReceiver;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->destroy()V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->destroy()V

    .line 47
    return-void
.end method

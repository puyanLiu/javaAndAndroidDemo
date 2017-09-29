.class Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;
.super Ljava/lang/Object;
.source "EmotionsLayout.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)Lcom/alipay/mobile/emotion/view/EmotionsLayout;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    return-object v0
.end method


# virtual methods
.method public OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$0(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$1$1;-><init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

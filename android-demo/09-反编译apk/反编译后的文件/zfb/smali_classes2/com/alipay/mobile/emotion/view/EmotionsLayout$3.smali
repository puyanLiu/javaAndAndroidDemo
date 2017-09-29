.class Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;
.super Ljava/lang/Object;
.source "EmotionsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    iput p2, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;->val$position:I

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    iget v1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$3;->val$position:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$14(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)V

    .line 297
    return-void
.end method

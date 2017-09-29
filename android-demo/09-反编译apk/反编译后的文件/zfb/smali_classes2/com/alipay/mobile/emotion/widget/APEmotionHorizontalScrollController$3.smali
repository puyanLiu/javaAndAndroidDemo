.class Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;
.super Ljava/lang/Object;
.source "APEmotionHorizontalScrollController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    iput p2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;->val$position:I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->access$3(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;->val$position:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 129
    return-void
.end method

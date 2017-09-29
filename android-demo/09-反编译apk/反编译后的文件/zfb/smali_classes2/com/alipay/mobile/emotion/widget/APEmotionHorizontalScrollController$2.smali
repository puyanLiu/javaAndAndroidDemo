.class Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;
.super Ljava/lang/Object;
.source "APEmotionHorizontalScrollController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

.field private final synthetic val$itemView:Landroid/view/View;

.field private final synthetic val$loaction:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->val$itemView:Landroid/view/View;

    iput p3, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->val$loaction:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->val$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->access$2(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->val$itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->access$3(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->val$itemView:Landroid/view/View;

    iget v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->val$loaction:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 94
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->access$2(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

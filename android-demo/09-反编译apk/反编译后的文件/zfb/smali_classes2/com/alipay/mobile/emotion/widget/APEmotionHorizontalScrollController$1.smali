.class Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$1;
.super Landroid/database/DataSetObserver;
.source "APEmotionHorizontalScrollController.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$1;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    .line 38
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$1;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->access$0(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$1;->this$0:Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->access$1(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->invalidate()V

    .line 43
    return-void
.end method

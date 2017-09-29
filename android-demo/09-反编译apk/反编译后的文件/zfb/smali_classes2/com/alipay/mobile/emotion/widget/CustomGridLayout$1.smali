.class Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;
.super Ljava/lang/Object;
.source "CustomGridLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;->this$0:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 95
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;->this$0:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->access$0(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;->this$0:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->access$1(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;Z)V

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;->this$0:Lcom/alipay/mobile/emotion/widget/CustomGridLayout;

    int-to-long v2, v0

    invoke-static {v1, p1, v0, v2, v3}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->access$2(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;Landroid/view/View;IJ)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

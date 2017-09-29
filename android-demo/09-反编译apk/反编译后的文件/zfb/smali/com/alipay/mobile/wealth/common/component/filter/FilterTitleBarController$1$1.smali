.class Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;
.super Ljava/lang/Object;
.source "FilterTitleBarController.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    .prologue
    .line 80
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$2(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$2(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    .line 84
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$3(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;

    .line 88
    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$4(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$4(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1$1;->this$1:Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$1;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;->access$0(Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController;)Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/wealth/common/component/filter/FilterTitleBarController$ActionListener;->onFilterChange(ILcom/alipay/mobile/wealth/common/component/filter/FilterItem;)V

    goto :goto_0
.end method

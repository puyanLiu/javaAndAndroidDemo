.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1450
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$1(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$3(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1452
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    .line 1454
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$1(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    move-result-object v1

    .line 1455
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v4

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v0

    sub-int v0, v4, v0

    .line 1454
    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;->onPageLongClicked(Ljava/lang/String;I)Z

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1483
    :cond_1
    :goto_0
    return v6

    .line 1461
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1462
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 1470
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1474
    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;-><init>(Landroid/content/Context;)V

    .line 1475
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    .line 1479
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1481
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$3(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v4, v0, v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$10(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/util/List;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;

    move-result-object v0

    .line 1480
    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1481
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1479
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 1463
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$3;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1464
    iget-boolean v4, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enabled:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoMenu;->isVideoSupport()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1465
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1476
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1477
    iget-object v0, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;->addData(Ljava/lang/String;)V

    .line 1475
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

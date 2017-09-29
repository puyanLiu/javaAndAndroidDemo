.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;
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
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1368
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$1(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$3(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1370
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$5(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoGroupIndex()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;

    .line 1372
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$1(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;

    move-result-object v1

    .line 1373
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v5

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->getOffset()I

    move-result v0

    sub-int v0, v5, v0

    .line 1372
    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPagerListener;->onPageLongClicked(Ljava/lang/String;I)Z

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1440
    :cond_1
    :goto_0
    return v4

    .line 1379
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$3(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;

    .line 1381
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/PhotoItem;->getPhotoPath()Ljava/lang/String;

    move-result-object v6

    move v1, v2

    move v3, v2

    .line 1383
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 1397
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1401
    new-instance v1, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;-><init>(Landroid/content/Context;)V

    .line 1402
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    .line 1406
    if-eqz v3, :cond_3

    .line 1407
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    new-instance v2, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-direct {v2, v3, v1, v5}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$7(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;)V

    .line 1408
    new-instance v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$1;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1431
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1432
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$3(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$4(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v3, v0, v5}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$10(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoInfo;Ljava/util/List;)Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1433
    new-instance v1, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2$2;-><init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1431
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 1384
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1386
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoMenu;->isPhotoSupport()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enabled:Z

    if-eqz v7, :cond_5

    .line 1387
    const-string/jumbo v7, "scan_qr"

    iget-object v8, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    if-eqz v7, :cond_6

    move v3, v4

    .line 1383
    :cond_5
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 1394
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1403
    :cond_7
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1404
    iget-object v0, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;->addData(Ljava/lang/String;)V

    .line 1402
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

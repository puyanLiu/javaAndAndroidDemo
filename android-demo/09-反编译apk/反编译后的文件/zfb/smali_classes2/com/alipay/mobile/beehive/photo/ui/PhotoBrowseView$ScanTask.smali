.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private alertDialogAdapter:Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

.field private menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;"
        }
    .end annotation
.end field

.field public qrCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1947
    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->alertDialogAdapter:Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

    .line 1948
    iput-object p3, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->menus:Ljava/util/List;

    .line 1949
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->alertDialogAdapter:Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;->clear()V

    .line 1958
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->menus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1959
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 1972
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->alertDialogAdapter:Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;->notifyDataSetChanged()V

    .line 1973
    return-void

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$6(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1961
    iget-boolean v2, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/service/PhotoMenu;->isPhotoSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1962
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->alertDialogAdapter:Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;

    iget-object v3, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/beehive/photo/data/AlertDialogAdapter;->addData(Ljava/lang/String;)V

    .line 1965
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->menus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1966
    const-string/jumbo v2, "scan_qr"

    iget-object v3, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    if-eqz v2, :cond_1

    .line 1967
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->qrCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->extra:Ljava/lang/String;

    goto :goto_1

    .line 1959
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setQrCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;->qrCode:Ljava/lang/String;

    .line 1953
    return-void
.end method

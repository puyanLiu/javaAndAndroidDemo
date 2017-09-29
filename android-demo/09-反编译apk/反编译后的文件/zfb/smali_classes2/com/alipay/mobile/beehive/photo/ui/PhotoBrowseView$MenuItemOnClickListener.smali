.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->mMenus:Ljava/util/List;

    .line 1579
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$7(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$ScanTask;)V

    .line 1588
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->mMenus:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1589
    iget-boolean v1, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->enableImpl:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "delete"

    iget-object v2, v0, Lcom/alipay/mobile/beehive/service/PhotoMenu;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1590
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$20(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    .line 1594
    :goto_0
    return-void

    .line 1592
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-static {v1, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$21(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    goto :goto_0
.end method

.method public resetData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$MenuItemOnClickListener;->mMenus:Ljava/util/List;

    .line 1583
    return-void
.end method

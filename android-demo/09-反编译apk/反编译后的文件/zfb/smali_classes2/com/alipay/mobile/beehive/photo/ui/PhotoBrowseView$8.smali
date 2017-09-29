.class Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;
.super Ljava/lang/Object;
.source "PhotoBrowseView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

.field private final synthetic val$photoMenu:Lcom/alipay/mobile/beehive/service/PhotoMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    iput-object p2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;->val$photoMenu:Lcom/alipay/mobile/beehive/service/PhotoMenu;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1074
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1075
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView$8;->val$photoMenu:Lcom/alipay/mobile/beehive/service/PhotoMenu;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->access$21(Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;Lcom/alipay/mobile/beehive/service/PhotoMenu;)V

    .line 1076
    return-void
.end method

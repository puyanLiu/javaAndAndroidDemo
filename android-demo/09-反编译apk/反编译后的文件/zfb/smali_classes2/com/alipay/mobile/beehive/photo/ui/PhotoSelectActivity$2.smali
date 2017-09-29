.class Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$2;
.super Ljava/lang/Object;
.source "PhotoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity$2;->this$0:Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;->access$8(Lcom/alipay/mobile/beehive/photo/ui/PhotoSelectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    return-void
.end method

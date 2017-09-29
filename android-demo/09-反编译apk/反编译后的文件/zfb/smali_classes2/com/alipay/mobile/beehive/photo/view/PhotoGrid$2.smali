.class Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$2;
.super Ljava/lang/Object;
.source "PhotoGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$2;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid$2;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoGrid;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    return-void
.end method

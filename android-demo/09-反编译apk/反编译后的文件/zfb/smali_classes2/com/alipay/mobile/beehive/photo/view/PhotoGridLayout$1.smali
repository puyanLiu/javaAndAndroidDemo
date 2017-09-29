.class Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;
.super Ljava/lang/Object;
.source "PhotoGridLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    iput p2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;->val$pos:I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;->val$pos:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;->onItemClick(JLandroid/view/View;Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)V

    .line 90
    return-void
.end method

.class final Lcom/alipay/asset/common/view/f;
.super Ljava/lang/Object;
.source "BaseWealthWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/e;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/e;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/f;->a:Lcom/alipay/asset/common/view/e;

    iput-object p2, p0, Lcom/alipay/asset/common/view/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/asset/common/view/f;->c:Landroid/widget/ImageView;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/asset/common/view/f;->a:Lcom/alipay/asset/common/view/e;

    invoke-static {v0}, Lcom/alipay/asset/common/view/e;->a(Lcom/alipay/asset/common/view/e;)Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/asset/common/view/f;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->access$0(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 187
    return-void
.end method

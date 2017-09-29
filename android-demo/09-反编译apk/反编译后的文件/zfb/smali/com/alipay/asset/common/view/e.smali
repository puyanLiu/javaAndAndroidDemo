.class final Lcom/alipay/asset/common/view/e;
.super Ljava/lang/Object;
.source "BaseWealthWidgetView.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/e;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    iput-object p2, p0, Lcom/alipay/asset/common/view/e;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alipay/asset/common/view/e;->c:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/asset/common/view/e;)Lcom/alipay/asset/common/view/BaseWealthWidgetView;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/asset/common/view/e;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    return-object v0
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/asset/common/view/e;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    new-instance v1, Lcom/alipay/asset/common/view/f;

    iget-object v2, p0, Lcom/alipay/asset/common/view/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/asset/common/view/e;->b:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/asset/common/view/f;-><init>(Lcom/alipay/asset/common/view/e;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/asset/common/view/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

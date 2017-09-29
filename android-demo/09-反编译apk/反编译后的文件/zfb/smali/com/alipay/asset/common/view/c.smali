.class final Lcom/alipay/asset/common/view/c;
.super Ljava/lang/Object;
.source "AccountInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/AccountInfoView;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/AccountInfoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    iput-object p2, p0, Lcom/alipay/asset/common/view/c;->b:Landroid/graphics/drawable/Drawable;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-static {v0}, Lcom/alipay/asset/common/view/AccountInfoView;->access$1(Lcom/alipay/asset/common/view/AccountInfoView;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    return-void
.end method

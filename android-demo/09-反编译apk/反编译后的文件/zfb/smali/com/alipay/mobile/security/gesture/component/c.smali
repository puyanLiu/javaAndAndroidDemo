.class final Lcom/alipay/mobile/security/gesture/component/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/c;->a:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->access$1(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

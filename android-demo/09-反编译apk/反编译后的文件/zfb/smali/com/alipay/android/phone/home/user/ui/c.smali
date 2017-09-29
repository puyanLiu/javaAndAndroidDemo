.class final Lcom/alipay/android/phone/home/user/ui/c;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/c;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    iput-object p2, p0, Lcom/alipay/android/phone/home/user/ui/c;->b:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/c;->a:Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/home/user/ui/UserInfoActivity;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    return-void
.end method

.class final Lcom/alipay/android/app/assist/c;
.super Ljava/lang/Object;
.source "FlybirdKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

.field private final synthetic b:Landroid/widget/LinearLayout;

.field private final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/assist/FlybirdKeyboard;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/assist/c;->a:Lcom/alipay/android/app/assist/FlybirdKeyboard;

    iput-object p2, p0, Lcom/alipay/android/app/assist/c;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/alipay/android/app/assist/c;->c:Landroid/view/ViewGroup;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/assist/c;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/assist/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    .line 236
    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alipay/android/app/assist/c;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/assist/c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/assist/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    invoke-static {}, Lcom/alipay/android/app/assist/FlybirdKeyboard;->d()V

    .line 242
    :cond_0
    return-void
.end method

.class final Lcom/alipay/android/app/hardwarepay/bracelet/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/f;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    return-void
.end method

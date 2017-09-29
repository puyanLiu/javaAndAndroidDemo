.class final Lcom/alipay/android/app/display/uielement/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UILink;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UILink;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bj;->a:Lcom/alipay/android/app/display/uielement/UILink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/alipay/android/app/display/uielement/bk;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/bk;-><init>(Lcom/alipay/android/app/display/uielement/bj;Lcom/alipay/android/app/display/event/EventType;)V

    .line 73
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bj;->a:Lcom/alipay/android/app/display/uielement/UILink;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UILink;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    .line 74
    return-void
.end method

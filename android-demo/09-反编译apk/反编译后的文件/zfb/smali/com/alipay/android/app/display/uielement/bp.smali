.class final Lcom/alipay/android/app/display/uielement/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bp;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/alipay/android/app/display/uielement/bq;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/bq;-><init>(Lcom/alipay/android/app/display/uielement/bp;Lcom/alipay/android/app/display/event/EventType;)V

    .line 121
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bp;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    .line 122
    return-void
.end method

.class final Lcom/alipay/android/app/assist/k;
.super Ljava/lang/Object;
.source "MspAssistUtil.java"

# interfaces
.implements Lcom/alipay/android/app/template/event/TElementEventHandler;


# instance fields
.field private final synthetic a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/assist/k;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 2

    .prologue
    .line 807
    invoke-static {p3}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Lcom/alipay/android/app/template/ITemplateClickCallback;)V

    .line 808
    iget-object v0, p0, Lcom/alipay/android/app/assist/k;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 810
    const/4 v0, 0x1

    return v0
.end method

.method public final onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/alipay/android/app/assist/k;->a:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 802
    const/4 v0, 0x1

    return v0
.end method

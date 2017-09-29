.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/g;
.super Ljava/lang/Object;
.source "AdContent.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 621
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 622
    const-string/jumbo v1, "AdClick"

    .line 621
    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

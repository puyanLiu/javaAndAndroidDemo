.class final Lcom/spdu/httpdns/e;
.super Ljava/lang/Object;
.source "HttpDnsBlockBox.java"


# static fields
.field static a:Lcom/spdu/httpdns/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/spdu/httpdns/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spdu/httpdns/d;-><init>(B)V

    sput-object v0, Lcom/spdu/httpdns/e;->a:Lcom/spdu/httpdns/d;

    return-void
.end method

.class final Lcom/spdu/httpdns/g;
.super Ljava/lang/Object;
.source "HttpDnsStorage.java"


# static fields
.field static a:Lcom/spdu/httpdns/HttpDnsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/spdu/httpdns/HttpDnsStorage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spdu/httpdns/HttpDnsStorage;-><init>(B)V

    sput-object v0, Lcom/spdu/httpdns/g;->a:Lcom/spdu/httpdns/HttpDnsStorage;

    return-void
.end method

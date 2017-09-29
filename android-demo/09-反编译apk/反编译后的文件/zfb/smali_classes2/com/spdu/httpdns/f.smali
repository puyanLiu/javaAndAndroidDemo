.class final Lcom/spdu/httpdns/f;
.super Ljava/lang/Object;
.source "HttpDnsCacheTable.java"


# static fields
.field static a:Lcom/spdu/httpdns/HttpDnsCacheTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/spdu/httpdns/HttpDnsCacheTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spdu/httpdns/HttpDnsCacheTable;-><init>(B)V

    sput-object v0, Lcom/spdu/httpdns/f;->a:Lcom/spdu/httpdns/HttpDnsCacheTable;

    return-void
.end method

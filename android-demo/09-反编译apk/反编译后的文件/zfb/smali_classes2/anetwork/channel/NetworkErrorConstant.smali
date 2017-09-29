.class public Lanetwork/channel/NetworkErrorConstant;
.super Ljava/lang/Object;
.source "NetworkErrorConstant.java"


# static fields
.field static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    sput-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/4 v1, -0x4

    const-string/jumbo v2, "\u8bf7\u6c42\u8bfb\u53d6\u5185\u5bb9\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/4 v1, -0x5

    const-string/jumbo v2, "\u8bf7\u6c42\u88ab\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/4 v1, -0x6

    const-string/jumbo v2, "URL\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/4 v1, -0x7

    const-string/jumbo v2, "\u5c1d\u8bd5\u591a\u6b21\u5931\u8d25,\u964d\u7ea7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/4 v1, -0x8

    const-string/jumbo v2, "SPDY\u8bf7\u6c42\u5931\u8d25,\u964d\u7ea7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string/jumbo v2, "\u8c03\u7528\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/16 v1, -0x9

    const-string/jumbo v2, "SPDY\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/16 v1, -0xa

    const-string/jumbo v2, "SPDY \u8bf7\u6c42\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/16 v1, -0xb

    const-string/jumbo v2, "SPDY SESSION\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/16 v1, -0xc

    const-string/jumbo v2, "\u8fdc\u7a0b\u65b9\u6cd5\u8c03\u7528\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    const/16 v1, -0xd

    const-string/jumbo v2, "SSL\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lanetwork/channel/NetworkErrorConstant;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

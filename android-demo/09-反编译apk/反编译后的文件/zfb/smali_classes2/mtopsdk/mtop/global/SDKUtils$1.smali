.class final Lmtopsdk/mtop/global/SDKUtils$1;
.super Ljava/lang/Object;
.source "SDKUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmtopsdk/mtop/global/SDKUtils$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKUtils$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/mtop/global/SDKUtils;->access$000(Ljava/lang/String;)V

    .line 101
    return-void
.end method

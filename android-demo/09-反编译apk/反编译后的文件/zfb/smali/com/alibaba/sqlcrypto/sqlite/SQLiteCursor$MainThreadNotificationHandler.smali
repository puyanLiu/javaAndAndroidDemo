.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;
.super Landroid/os/Handler;
.source "SQLiteCursor.java"


# instance fields
.field final synthetic this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;


# direct methods
.method protected constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->access$8(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V

    .line 170
    return-void
.end method

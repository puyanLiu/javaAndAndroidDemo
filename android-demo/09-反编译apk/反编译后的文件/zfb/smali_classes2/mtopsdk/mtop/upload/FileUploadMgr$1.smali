.class Lmtopsdk/mtop/upload/FileUploadMgr$1;
.super Ljava/lang/Object;
.source "FileUploadMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/upload/FileUploadMgr;

.field final synthetic val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/upload/FileUploadMgr;Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->this$0:Lmtopsdk/mtop/upload/FileUploadMgr;

    iput-object p2, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_0
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    const-string/jumbo v1, "remove upload task failed,fileInfo is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->this$0:Lmtopsdk/mtop/upload/FileUploadMgr;

    invoke-static {v0}, Lmtopsdk/mtop/upload/FileUploadMgr;->access$000(Lmtopsdk/mtop/upload/FileUploadMgr;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->this$0:Lmtopsdk/mtop/upload/FileUploadMgr;

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-static {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->access$100(Lmtopsdk/mtop/upload/FileUploadMgr;Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->cancel()V

    .line 172
    :cond_3
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->this$0:Lmtopsdk/mtop/upload/FileUploadMgr;

    invoke-static {v0}, Lmtopsdk/mtop/upload/FileUploadMgr;->access$000(Lmtopsdk/mtop/upload/FileUploadMgr;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v0, "mtopsdk.FileUploadMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove upload task succeed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/mtop/upload/FileUploadMgr$1;->val$fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v2}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;
.super Ljava/lang/Object;
.source "BackupProvidersDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->this$0:Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

    iput-object p2, p0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$packageList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$packageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 51
    .local v15, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BacKing Up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->this$0:Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

    invoke-static {v2, v15}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$100(Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 53
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 54
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 55
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor has size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "files"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 58
    .local v11, "filesIndex":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 60
    .local v10, "file":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->this$0:Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

    invoke-static {v2, v15}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$100(Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 63
    .local v17, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to backup ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v12, 0x0

    .line 65
    .local v12, "inputStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 68
    .local v13, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 69
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 71
    .local v16, "parentFolder":Ljava/lang/String;
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->this$0:Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0, v4}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$200(Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v13    # "outStream":Ljava/io/BufferedOutputStream;
    .local v14, "outStream":Ljava/io/BufferedOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->this$0:Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 73
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "File copied"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v14

    .line 77
    .end local v14    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_1

    .line 74
    .end local v16    # "parentFolder":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 75
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not find file"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 85
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "file":Ljava/lang/String;
    .end local v11    # "filesIndex":I
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "outStream":Ljava/io/BufferedOutputStream;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cursor is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending Broadcast for Backup Complete"

    invoke-static {v1, v2}, Lcom/samsung/android/hostmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v7, "backCompleteIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.watchmanager.ACTION_DATA_BACKUP_COMPLETE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hostmanager/br/BackupProvidersDataReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 93
    return-void

    .line 74
    .end local v7    # "backCompleteIntent":Landroid/content/Intent;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "file":Ljava/lang/String;
    .restart local v11    # "filesIndex":I
    .restart local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "parentFolder":Ljava/lang/String;
    .restart local v17    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    move-object v13, v14

    .end local v14    # "outStream":Ljava/io/BufferedOutputStream;
    .restart local v13    # "outStream":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

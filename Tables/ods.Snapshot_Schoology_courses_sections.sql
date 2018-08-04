CREATE TABLE [ods].[Snapshot_Schoology_courses_sections]
(
[Schoology_courses_sectionsSK] [int] NOT NULL IDENTITY(1, 1),
[section_id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[course_title] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[course_code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[course_id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[school_id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[access_code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[section_title] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[section_code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[section_school_code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[synced] [bit] NULL,
[active] [bit] NULL,
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[parent_id] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[profile_url] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[location] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[start_time] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[end_time] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[weight] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[admin] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[options_weighted_grading_categories] [bit] NULL,
[upload_documents] [bit] NULL,
[create_discussion] [bit] NULL,
[member_post] [bit] NULL,
[member_post_comment] [bit] NULL,
[default_grading_scale_id] [bit] NULL,
[hide_overall_grade] [bit] NULL,
[hide_grading_period_grade] [bit] NULL,
[allow_custom_overall_grade] [bit] NULL,
[allow_custom_overall_grade_text] [bit] NULL,
[visibility_topics] [bit] NULL,
[visibility_assignments] [bit] NULL,
[visibility_assessments] [bit] NULL,
[visibility_new_test_quiz] [bit] NULL,
[visibility_common_assessments] [bit] NULL,
[visibility_documents] [bit] NULL,
[visibility_discussion] [bit] NULL,
[visibility_album] [bit] NULL,
[visibility_pages] [bit] NULL,
[ETL_CreatedOn] [datetime] NULL,
[ETL_CreatedBy] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ETL_UpdatedOn] [datetime] NULL,
[ETL_UpdatedBy] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RecordEndDate] [datetime] NULL
)
GO
ALTER TABLE [ods].[Snapshot_Schoology_courses_sections] ADD CONSTRAINT [PK__Snapshot__500E0B6EF7FFCA1F] PRIMARY KEY CLUSTERED  ([Schoology_courses_sectionsSK])
GO
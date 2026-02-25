
        private String buildDeveloperSignupEmailContent(Developer developer) {
                StringBuilder emailBuilder = new StringBuilder();
                emailBuilder.append("<!DOCTYPE html>");
                emailBuilder.append("<html lang=\"en\"><head><meta charset=\"UTF-8\"></head>");
                emailBuilder.append(
                        "<body style=\"margin: 0; padding: 0; font-family: 'Inter', 'Roboto', 'Helvetica Neue', Arial, sans-serif; line-height: 1.6; color: #333;\">");

                // Email container
                emailBuilder.append(
                        "<div style=\"max-width: 650px; margin: 0 auto; background-color: #ffffff; border-radius: 8px; overflow: hidden; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">");

                // Header with Neotek branding
                emailBuilder.append("<div style=\"background-color: #f5f5f5; padding: 25px; text-align: center;\">");
                emailBuilder.append(
                        "<img src=\"https://www.neotek.sa/neotek/uploads/Logo_c4737a7777.svg\" alt=\"Neotek Logo\" style=\"width: 140px; height: auto;\">");
                emailBuilder.append("</div>");

                // Alert banner for new signup
                emailBuilder.append("<div style=\"padding: 0 40px; padding-top: 20px;\">");
                emailBuilder.append(
                        "<div style=\"background-color: #E8F5E9; border-left: 4px solid #4CAF50; padding: 15px; border-radius: 4px;\">");
                emailBuilder.append(
                        "<p style=\"margin: 0; color: #2E7D32; font-weight: 600; font-size: 15px;\">🎉 New Developer Account Created</p>");
                emailBuilder.append("</div>");
                emailBuilder.append("</div>");

                // Content area
                emailBuilder.append("<div style=\"padding: 30px 40px;\">");

                emailBuilder.append(
                        "<p style=\"margin-bottom: 20px; font-size: 15px;\">A new developer has successfully signed up for the Neotek Developer Portal.</p>");

                // Developer Information
                emailBuilder.append(
                        "<div style=\"background-color: #E8F4FD; border-radius: 6px; padding: 20px; margin-bottom: 25px; border: 1px solid #BEE3F8;\">");
                emailBuilder.append(
                        "<h3 style=\"color: #0066CC; margin-top: 0; margin-bottom: 15px; font-size: 16px; font-weight: 600;\">Developer Details</h3>");
                emailBuilder.append("<p style=\"margin: 5px 0;\"><strong>Full Name:</strong> ")
                        .append(developer.getFullName()).append("</p>");
                emailBuilder.append("<p style=\"margin: 5px 0;\"><strong>Email Address:</strong> <a href=\"mailto:")
                        .append(developer.getEmail()).append("\" style=\"color: #0066CC;\">")
                        .append(developer.getEmail()).append("</a></p>");
                emailBuilder.append("<p style=\"margin: 5px 0;\"><strong>Phone Number:</strong> <a href=\"tel:")
                        .append(developer.getPhoneNumber()).append("\" style=\"color: #0066CC;\">")
                        .append(developer.getPhoneNumber()).append("</a></p>");
                emailBuilder.append("<p style=\"margin: 5px 0;\"><strong>Company:</strong> ")
                        .append(developer.getCompany()).append("</p>");
                emailBuilder.append("<p style=\"margin: 5px 0;\"><strong>Signup Source:</strong> ")
                        .append("<span style=\"color: #EF6701; font-weight: 600;\">Developer Portal</span></p>");
                emailBuilder.append("<p style=\"margin: 5px 0; margin-bottom: 0;\"><strong>Submission Timestamp:</strong> ")
                        .append(developer.getCreatedAt() != null
                                ? developer.getCreatedAt().atZone(java.time.ZoneId.systemDefault())
                                .format(java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss"))
                                : "N/A")
                        .append("</p>");
                emailBuilder.append("</div>");

                // Footer
                emailBuilder.append(
                        "<div style=\"background-color: #f5f5f5; padding: 20px; text-align: center; font-size: 14px; color: #666;\">");
                emailBuilder.append("<p style=\"margin: 0; font-weight: 600;\">Neotek Developer Portal Team</p>");
                emailBuilder.append(
                        "<p style=\"margin-top: 10px; margin-bottom: 0; font-size: 12px;\">This is an automated notification from the Developer Portal.</p>");
                emailBuilder.append("</div>");

                emailBuilder.append("</div>");
                emailBuilder.append("</body></html>");

                return emailBuilder.toString();
        }
